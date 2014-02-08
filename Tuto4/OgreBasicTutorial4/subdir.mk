################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../OgreBasicTutorial4/BasicTutorial4.cpp 

OBJS += \
./OgreBasicTutorial4/BasicTutorial4.o 

CPP_DEPS += \
./OgreBasicTutorial4/BasicTutorial4.d 


# Each subdirectory must supply rules for building sources it contributes
OgreBasicTutorial4/%.o: ../OgreBasicTutorial4/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/include/boost -I/usr/include/ois -I/usr/local/include/OGRE -I/usr/local/include/OGRE/Overlay -I/usr/local/include/OGRE/Terrain -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


