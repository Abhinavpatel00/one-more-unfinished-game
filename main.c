#include <SDL3/SDL.h>
#include <SDL3/SDL_render.h>

#define SCREEN_WIDTH  800
#define SCREEN_HEIGHT 240
#define TILE_SIZE     200

int countx = 3;
int county = 3;
int tile_size = TILE_SIZE;

int
main(int argc, char* argv[]) {
    SDL_Window* window;
    SDL_Renderer* renderer;
    SDL_Surface* surface = NULL;
    SDL_Texture* texture = NULL;
    SDL_Event event;

    if (!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS)) {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION, "Couldn't initialize SDL: %s", SDL_GetError());
        return 3;
    }

    if (!SDL_CreateWindowAndRenderer("Hello SDL", 800, 240, SDL_WINDOW_RESIZABLE | SDL_WINDOW_FULLSCREEN, &window,
                                     &renderer)) {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION, "Couldn't create window and renderer: %s", SDL_GetError());
        return 3;
    }

    //    SDL_DestroySurface(surface);

    while (1) {
        SDL_PollEvent(&event);
        if (event.type == SDL_EVENT_QUIT) {
            break;
        }

        SDL_SetRenderDrawColor(renderer, 0x00, 0x00, 0x00, 0xFF);
        SDL_RenderClear(renderer);

        int window_height = 0;
        int window_width = 0;

        SDL_GetWindowSize(window, &window_width, &window_height);
        SDL_SetRenderDrawColor(renderer, 0x00, 0x00, 0xFF, 0xFF);
        int total_rows = window_height / tile_size;
        int tolal_column = window_width / tile_size;
        for (int row = 0; row < total_rows; ++row) {
            SDL_RenderLine(renderer, 0, (row + 1) * tile_size, window_width, (row + 1) * tile_size);
        }
        for (int col = 0; col < tolal_column; ++col) {
            SDL_RenderLine(renderer, (col + 1) * tile_size, 0, (col + 1) * tile_size, window_height);
        }
        //
        SDL_SetRenderDrawColor(renderer, 0x00, 0xFF, 0xFF, 0xFF);
        if (event.type == SDL_EVENT_KEY_DOWN && event.key.scancode == SDL_SCANCODE_D) {
            countx++;
        }
        if (event.type == SDL_EVENT_KEY_DOWN && event.key.scancode == SDL_SCANCODE_S) {
            county++;
        }
        if (event.type == SDL_EVENT_KEY_DOWN && event.key.scancode == SDL_SCANCODE_A) {
            countx--;
        }
        if (event.type == SDL_EVENT_KEY_DOWN && event.key.scancode == SDL_SCANCODE_W) {
            county--;
        }
        if (event.type == SDL_EVENT_KEY_DOWN && event.key.scancode == SDL_SCANCODE_M) {
            tile_size--;
        }
        if (event.type == SDL_EVENT_KEY_DOWN && event.key.scancode == SDL_SCANCODE_N) {
            tile_size++;
        }

        SDL_RenderFillRect(renderer, &(SDL_FRect){countx * tile_size, county * tile_size, tile_size, tile_size});

        SDL_RenderTexture(renderer, texture, NULL, NULL);
        SDL_RenderPresent(renderer);
    }

    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);

    SDL_Quit();

    return 0;
}
