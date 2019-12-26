# Contributing to Home Assistant

Notes and tips for working contributing back to home-assistant

## Useful links

- [Main development home](https://developers.home-assistant.io/)
- [Home-assistant architecture](https://developers.home-assistant.io/docs/en/architecture_index.html)
- [Setup the development environment](https://developers.home-assistant.io/docs/en/development_environment.html)
- [Testing your code](https://developers.home-assistant.io/docs/en/development_testing.html)

## Tips

- Activating the development virtual environment:
  - `source venv/bin/activate`
- Running tests from a single test fixture:
  - `tox -e py36 -- tests/components/time_date/test_sensor.py`
- Running a single test method:
  - `tox -e py36 -- tests/components/time_date/test_sensor.py::TestTimeDateSensor::test_states`
- Docs: when writing documentation, remember to branch off the `next` branch

