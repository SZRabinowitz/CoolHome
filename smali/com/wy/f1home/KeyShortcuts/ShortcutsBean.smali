.class public Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;
.super Ljava/lang/Object;
.source "ShortcutsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->mPkgName:Ljava/lang/String;

    return-void
.end method
