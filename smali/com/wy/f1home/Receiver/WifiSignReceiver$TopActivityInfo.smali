.class public Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;
.super Ljava/lang/Object;
.source "WifiSignReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/Receiver/WifiSignReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopActivityInfo"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public topActivityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 130
    iput-object v0, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, ""

    .line 131
    iput-object v0, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->topActivityName:Ljava/lang/String;

    return-void
.end method
