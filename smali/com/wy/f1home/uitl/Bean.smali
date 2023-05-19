.class public Lcom/wy/f1home/uitl/Bean;
.super Ljava/lang/Object;
.source "Bean.java"


# static fields
.field public static final DEFAULT_GROUP:Ljava/lang/String; = "mainmenu"

.field public static final GROUP_EXTRA:Ljava/lang/String; = "extra"

.field public static final GROUP_HIDE:Ljava/lang/String; = "hide"

.field public static final GROUP_MAIN_MENU:Ljava/lang/String; = "mainmenu"

.field public static final MIN_POSITION:I = 0x1

.field public static final POSITION_INVALID:I = 0x7fffffff


# instance fields
.field filtered:Z

.field public group:Ljava/lang/String;

.field public iconCustomized:Z

.field public mClsName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mPkgName:Ljava/lang/String;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleId:I

.field public position:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    .line 57
    iput p2, p0, Lcom/wy/f1home/uitl/Bean;->mTitleId:I

    .line 58
    iput-object p3, p0, Lcom/wy/f1home/uitl/Bean;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_0

    const-string p4, ""

    .line 59
    :cond_0
    iput-object p4, p0, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    if-nez p5, :cond_1

    const-string p5, ""

    .line 60
    :cond_1
    iput-object p5, p0, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p6}, Lcom/wy/f1home/uitl/Bean;->isGroupValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p6, "mainmenu"

    :goto_0
    iput-object p6, p0, Lcom/wy/f1home/uitl/Bean;->group:Ljava/lang/String;

    const/4 p1, 0x1

    if-ge p7, p1, :cond_3

    const p7, 0x7fffffff

    .line 62
    :cond_3
    iput p7, p0, Lcom/wy/f1home/uitl/Bean;->position:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v5, "extra"

    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/wy/f1home/uitl/Bean;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Lcom/wy/f1home/uitl/Bean;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    const-string p3, ""

    .line 49
    :cond_0
    iput-object p3, p0, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    if-nez p4, :cond_1

    const-string p4, ""

    .line 50
    :cond_1
    iput-object p4, p0, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p5}, Lcom/wy/f1home/uitl/Bean;->isGroupValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p5, "mainmenu"

    :goto_0
    iput-object p5, p0, Lcom/wy/f1home/uitl/Bean;->group:Ljava/lang/String;

    const/4 p1, 0x1

    if-ge p6, p1, :cond_3

    const p6, 0x7fffffff

    .line 52
    :cond_3
    iput p6, p0, Lcom/wy/f1home/uitl/Bean;->position:I

    return-void
.end method


# virtual methods
.method public getComponentKey()Lcom/wy/f1home/uitl/ComponentKey;
    .locals 4

    .line 75
    new-instance v0, Lcom/wy/f1home/uitl/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/wy/f1home/uitl/ComponentKey;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 3

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getmClsName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getmIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/wy/f1home/uitl/Bean;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getmName()Ljava/lang/CharSequence;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getmPkgName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isGroupValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mainmenu"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "extra"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hide"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setmClsName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    return-void
.end method

.method public setmIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/wy/f1home/uitl/Bean;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setmName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setmPkgName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    return-void
.end method
