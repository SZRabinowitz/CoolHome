.class public Lcom/wy/f1home/activity/HomeGridView;
.super Landroid/widget/GridView;
.source "HomeGridView.java"


# instance fields
.field private isLoop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    return-void
.end method

.method private focusToNextItem()Z
    .locals 5

    .line 68
    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->isAnyLineLast()Z

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 70
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lcom/wy/f1home/activity/HomeGridView;->setSelection(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    .line 74
    :goto_0
    iget-boolean v3, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 75
    invoke-virtual {p0, v4}, Lcom/wy/f1home/activity/HomeGridView;->setSelection(I)V

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0x42

    .line 79
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wy/f1home/activity/HomeGridView;->playSoundEffect(I)V

    :cond_2
    return v0
.end method

.method private focusToPreItem()Z
    .locals 4

    .line 86
    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->isAnyLineFirst()Z

    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Lcom/wy/f1home/activity/HomeGridView;->setSelection(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-boolean v3, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeGridView;->setSelection(I)V

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0x11

    .line 97
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wy/f1home/activity/HomeGridView;->playSoundEffect(I)V

    :cond_2
    return v0
.end method

.method private isAnyLineFirst()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getSelectedItemPosition()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getNumColumns()I

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAnyLineLast()Z
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getSelectedItemPosition()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getNumColumns()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/2addr v0, v2

    .line 128
    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isFirstLine()Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getNumColumns()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastLine()Z
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getCount()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getSelectedItemPosition()I

    move-result v1

    .line 155
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getNumColumns()I

    move-result v2

    rem-int v2, v0, v2

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getNumColumns()I

    move-result v2

    :cond_0
    sub-int/2addr v0, v1

    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedFocusToEnd()Z
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->isFirstLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeGridView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeGridView;->setSelection(I)V

    const/16 v0, 0x21

    .line 116
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeGridView;->playSoundEffect(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isNeedFocusToStart()Z
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/wy/f1home/activity/HomeGridView;->isLoop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->isLastLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/wy/f1home/activity/HomeGridView;->setSelection(I)V

    const/16 v0, 0x82

    .line 106
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeGridView;->playSoundEffect(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move v1, v0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->focusToNextItem()Z

    move-result v1

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->focusToPreItem()Z

    move-result v1

    goto :goto_0

    .line 59
    :pswitch_2
    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->isNeedFocusToStart()Z

    move-result v1

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0}, Lcom/wy/f1home/activity/HomeGridView;->isNeedFocusToEnd()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
