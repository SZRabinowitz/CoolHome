.class public Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;
.super Ljava/lang/Object;
.source "SystemPropertiesUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemPropertiesUtils"

.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mGetBooleanMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 46
    :try_start_0
    invoke-static {}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object p0

    :catch_0
    const-string p0, "SystemPropertiesUtils"

    const-string v0, "Unable to read system properties"

    .line 51
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    .line 60
    :try_start_0
    invoke-static {}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->getBooleanMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SystemPropertiesUtils"

    const-string v0, "Unable to read system properties"

    .line 62
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method private static getBooleanMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->getSystemPropertiesClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    .line 39
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    .line 41
    :cond_0
    sget-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->getSystemPropertiesClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    .line 31
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 33
    :cond_0
    sget-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getSystemPropertiesClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.os.SystemProperties"

    .line 23
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    .line 25
    :cond_0
    sget-object v0, Lcom/wy/f1home/Flashlight/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    return-object v0
.end method
