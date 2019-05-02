#pragma once

namespace space_age {
  class space_age {
    public: 
    explicit space_age(long secs);
    long seconds() const;
    float on_earth() const;
    float on_mercury() const;
    float on_venus() const;
    float on_mars() const;
    float on_jupiter() const;
    float on_saturn() const;
    float on_uranus() const;
    float on_neptune() const;

    private:
    long priv_seconds;
    const long EARTH_ORBITAL = 31557600;
  };
}
