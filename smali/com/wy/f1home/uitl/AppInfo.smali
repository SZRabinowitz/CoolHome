.class public Lcom/wy/f1home/uitl/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appClassName:Ljava/lang/String;

.field public appDrawableIcon:Landroid/graphics/drawable/Drawable;

.field public appIcon:I

.field public appLabel:Ljava/lang/String;

.field public appPkg:Ljava/lang/String;

.field public background:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppClassName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/wy/f1home/uitl/AppInfo;->appClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/wy/f1home/uitl/AppInfo;->appDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppIcon()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/wy/f1home/uitl/AppInfo;->appIcon:I

    return v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/wy/f1home/uitl/AppInfo;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPkg()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/wy/f1home/uitl/AppInfo;->appPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/wy/f1home/uitl/AppInfo;->background:I

    return v0
.end method

.method public setAppClassName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/wy/f1home/uitl/AppInfo;->appClassName:Ljava/lang/String;

    return-void
.end method

.method public setAppDrawableIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/wy/f1home/uitl/AppInfo;->appDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppIcon(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/wy/f1home/uitl/AppInfo;->appIcon:I

    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/wy/f1home/uitl/AppInfo;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppPkg(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/wy/f1home/uitl/AppInfo;->appPkg:Ljava/lang/String;

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/wy/f1home/uitl/AppInfo;->background:I

    return-void
.end method
