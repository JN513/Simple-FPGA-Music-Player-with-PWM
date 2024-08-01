#from doom_melody import melody, tempo
#from testris_melody import melody, tempo
#from pacman_melody import melody, tempo
#from zelda_melody import melody, tempo
#from starwars_melody import melody, tempo
#from imperialmarch_melody import melody, tempo
#from mario_melody import melody, tempo
#from asabranca_melody import melody, tempo
#from nokia_melody import melody, tempo
from takeonme_melody import melody, tempo


def main(music_name):
    file = open(f"../music/{music_name}.hex", "w")

    length = len(melody) // 2

    file.write(f"{length:08X}\n")

    for i in range(0, len(melody), 2):
        note = melody[i]
        duration = melody[i + 1]

        mul = 0
        if duration < 0:
            mul = 1
            duration = -duration

        duration = ((60000 * 4) / tempo) // duration
        duration = duration * 0.9

        if mul:
            duration = duration * 1.5

        duration = int(duration)

        duration = duration << 21

        buffer = duration | note

        file.write(f"{buffer:08X}\n")

    file.close()

if __name__ == "__main__":
    main("takeonme")