.class public Lcom/wy/f1home/uitl/LogUitl;
.super Ljava/lang/Object;
.source "LogUitl.java"


# static fields
.field public static mOpenDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/wy/f1home/uitl/LogUitl;->mOpenDebug:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/wy/f1home/uitl/LogUitl;->mOpenDebug:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
