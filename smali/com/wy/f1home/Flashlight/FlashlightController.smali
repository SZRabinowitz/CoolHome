.class public Lcom/wy/f1home/Flashlight/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# static fields
.field private static final FLASH_PATH:Ljava/lang/String;

.field private static final SWITCH_OFF:Ljava/lang/String;

.field private static final SWITCH_ON:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FlashlightController"

.field private static final VALID_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.flashlight.on_value"

    const-string v1, "1"

    .line 21
    invoke-static {v0, v1}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/Flashlight/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    const-string v0, "ro.flashlight.off_value"

    const-string v1, "0"

    .line 23
    invoke-static {v0, v1}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/Flashlight/FlashlightController;->SWITCH_OFF:Ljava/lang/String;

    const-string v0, "ro.flashlight.node"

    const-string v1, "/sys/class/flashlight/torch/enable"

    .line 25
    invoke-static {v0, v1}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/Flashlight/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/wy/f1home/Flashlight/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/wy/f1home/Flashlight/FlashlightController;->VALID_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFlashlightOn()Z
    .locals 2

    .line 46
    sget-object v0, Lcom/wy/f1home/Flashlight/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    invoke-static {}, Lcom/wy/f1home/Flashlight/FlashlightController;->readFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readFile()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 64
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/wy/f1home/Flashlight/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 69
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    sget v2, Lcom/wy/f1home/Flashlight/FlashlightController;->VALID_INDEX:I

    if-lt v1, v2, :cond_1

    .line 77
    sget v2, Lcom/wy/f1home/Flashlight/FlashlightController;->VALID_INDEX:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_1
    :try_start_3
    const-string v1, "FlashlightController"

    const-string v3, "Read file error!!!"

    .line 80
    invoke-static {v1, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "readError"

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 86
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    move-object v0, v1

    :goto_3
    const-string v1, "FlashlightController"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_4
    if-eqz v3, :cond_3

    .line 86
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :cond_3
    :goto_5
    throw v0

    :cond_4
    const-string v1, "FlashlightController"

    const-string v2, "File is not exist"

    .line 94
    invoke-static {v1, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static switchFlashlight()Z
    .locals 4

    .line 51
    invoke-static {}, Lcom/wy/f1home/Flashlight/FlashlightController;->isFlashlightOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "FlashlightController"

    const-string v2, "switchFlashlight, will close."

    .line 52
    invoke-static {v0, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/wy/f1home/Flashlight/FlashlightController;->turnOffFlashlight(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "FlashlightController"

    const-string v2, "switchFlashlight, will open."

    .line 55
    invoke-static {v0, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v1}, Lcom/wy/f1home/Flashlight/FlashlightController;->turnOnFlashlight(Z)Z

    move-result v0

    :goto_0
    const-string v1, "FlashlightController"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchFlashlight, ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static turnOffFlashlight(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 39
    sget-object p0, Lcom/wy/f1home/Flashlight/FlashlightController;->SWITCH_OFF:Ljava/lang/String;

    invoke-static {p0}, Lcom/wy/f1home/Flashlight/FlashlightController;->writeFile(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 41
    :cond_0
    invoke-static {}, Lcom/wy/f1home/Flashlight/FlashlightController;->isFlashlightOn()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-static {v0}, Lcom/wy/f1home/Flashlight/FlashlightController;->turnOffFlashlight(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static turnOnFlashlight(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 31
    sget-object p0, Lcom/wy/f1home/Flashlight/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    invoke-static {p0}, Lcom/wy/f1home/Flashlight/FlashlightController;->writeFile(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 33
    :cond_0
    invoke-static {}, Lcom/wy/f1home/Flashlight/FlashlightController;->isFlashlightOn()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/wy/f1home/Flashlight/FlashlightController;->turnOnFlashlight(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private static writeFile(Ljava/lang/String;)Z
    .locals 5

    .line 103
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wy/f1home/Flashlight/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 107
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/wy/f1home/Flashlight/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    :try_start_1
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v0

    :goto_1
    move-object v0, v2

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v3, v0

    :goto_2
    move-object v0, v2

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v0

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v3, v0

    :goto_3
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "FlashlightController"

    const-string v4, "Write file error!!!"

    .line 112
    invoke-static {v2, v4}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_0

    .line 117
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_4
    if-eqz v3, :cond_4

    .line 124
    :try_start_7
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    :catchall_3
    move-exception p0

    :goto_5
    if-eqz v0, :cond_1

    .line 117
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_6
    if-eqz v3, :cond_2

    .line 124
    :try_start_9
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :cond_2
    :goto_7
    throw p0

    :cond_3
    const-string p0, "FlashlightController"

    const-string v0, "File is not exist"

    .line 131
    invoke-static {p0, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_8
    return v1
.end method
