#!/system/bin/sh
sleep 40

# Fix for Exynos 990
if [ -d "/sys/devices/system/cpu/cpufreq/policy4" ]; then
    chmod 644 /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
    echo 1801000 > /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
    chmod 444 /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
fi

# Governor tweak
echo "schedutil" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "schedutil" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
