.class final Lcom/wy/f1home/uitl/PackageInfoUtil$1;
.super Ljava/util/ArrayList;
.source "PackageInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/PackageInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.android.stk"

    invoke-virtual {p0, v0}, Lcom/wy/f1home/uitl/PackageInfoUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "jp.takumi.reboottest"

    invoke-virtual {p0, v0}, Lcom/wy/f1home/uitl/PackageInfoUtil$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
