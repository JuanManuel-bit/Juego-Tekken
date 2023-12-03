#include <SFML/Graphics.hpp>

int main()
{
    sf::RenderWindow window(sf::VideoMode(800, 600), "SFML Image");

    sf::Texture texture;
    if (!texture.loadFromFile("./assets/images/LingXiaoyu.png"))
    {
        return -1;
    }

    sf::Sprite sprite(texture);

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
            {
                window.close();
            }
        }

        window.clear();

        window.draw(sprite);

        window.display();
    }

    return 0;
}