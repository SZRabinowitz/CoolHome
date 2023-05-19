.class public Lcom/wy/f1home/uitl/WifiSignActivity;
.super Landroid/app/Activity;
.source "WifiSignActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0055

    .line 15
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/WifiSignActivity;->setContentView(I)V

    return-void
.end method
