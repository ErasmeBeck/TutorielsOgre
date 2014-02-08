################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../OgreBasicTutorial3/BasicTutorial3.cpp 

OBJS += \
./OgreBasicTutorial3/BasicTutorial3.o 

CPP_DEPS += \
./OgreBasicTutorial3/BasicTutorial3.d 


# Each subdirectory must supply rules for building sources it contributes
OgreBasicTutorial3/%.o: ../OgreBasicTutorial3/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/include/boost -I/usr/include/ois -I/usr/local/include/OGRE -I/usr/local/include/OGRE/Overlay -I/usr/local/include/OGRE/Terrain -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


