from abc import ABC, abstractmethod


class ETLBase(ABC):

    @abstractmethod
    def extract(self):
        pass

    @abstractmethod
    def transform(self):
        pass

    @abstractmethod
    def load(self):
        pass
