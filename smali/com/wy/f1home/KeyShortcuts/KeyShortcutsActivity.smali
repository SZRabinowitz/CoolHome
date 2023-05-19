.class public Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "KeyShortcutsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static SHORTCUT_DOWN_KEY:Ljava/lang/String; = "downsc"

.field public static SHORTCUT_DOWN_KEY_TITLE:Ljava/lang/String; = "downsctitle"

.field public static SHORTCUT_DOWN_VALUE:Ljava/lang/String; = "com.android.gallery:com.android.camera.GalleryPicker"

.field public static SHORTCUT_LEFT_KEY:Ljava/lang/String; = "leftsc"

.field public static SHORTCUT_LEFT_KEY_TITLE:Ljava/lang/String; = "leftsctitle"

.field public static SHORTCUT_LEFT_VALUE:Ljava/lang/String; = "com.wy.f1home:com.wy.f1home.Verizon.VerizonActivity"

.field public static SHORTCUT_RIGHT_KEY:Ljava/lang/String; = "rightsc"

.field public static SHORTCUT_RIGHT_KEY_TITLE:Ljava/lang/String; = "rightsctitle"

.field public static SHORTCUT_RIGHT_VALUE:Ljava/lang/String; = "com.wy.f1home:com.wy.f1home.KeyShortcuts.KeyShortcutsActivity"

.field public static SHORTCUT_UP_KEY:Ljava/lang/String; = "upsc"

.field public static SHORTCUT_UP_KEY_TITLE:Ljava/lang/String; = "upsctitle"

.field public static SHORTCUT_UP_VALUE:Ljava/lang/String; = "com.wy.f1home:com.wy.f1home.Notification.MainActivity"

.field public static mImageViewDown:Landroid/widget/TextView;

.field public static mImageViewLeft:Landroid/widget/TextView;

.field public static mImageViewRight:Landroid/widget/TextView;

.field public static mImageViewUp:Landroid/widget/TextView;


# instance fields
.field public mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public changStatusIconCollor(Z)V
    .locals 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 163
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public initButtonBar()V
    .locals 4

    const-string v0, "wuyu"

    const-string v1, "ToolActivity initButtonBar"

    .line 136
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09007e

    .line 137
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 139
    new-instance v0, Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-direct {v0, p0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    .line 141
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setBackgroundColor(I)V

    .line 148
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarCenter(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public initView()V
    .locals 1

    const v0, 0x7f0900b9

    .line 79
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewLeft:Landroid/widget/TextView;

    const v0, 0x7f0900ba

    .line 80
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewRight:Landroid/widget/TextView;

    const v0, 0x7f0900bb

    .line 81
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewUp:Landroid/widget/TextView;

    const v0, 0x7f0900b8

    .line 82
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewDown:Landroid/widget/TextView;

    .line 84
    sget-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewUp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewDown:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewUp:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0900bb

    invoke-virtual {p0, p1, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->startShortcutsSelect(Ljava/lang/String;I)V

    goto :goto_0

    .line 177
    :pswitch_1
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0900ba

    invoke-virtual {p0, p1, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->startShortcutsSelect(Ljava/lang/String;I)V

    goto :goto_0

    .line 174
    :pswitch_2
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewLeft:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0900b9

    invoke-virtual {p0, p1, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->startShortcutsSelect(Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    :pswitch_3
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewDown:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0900b8

    invoke-virtual {p0, p1, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->startShortcutsSelect(Ljava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900b8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->changStatusIconCollor(Z)V

    const p1, 0x7f0c0033

    .line 62
    invoke-virtual {p0, p1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->initButtonBar()V

    .line 66
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->initView()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    .line 212
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->reset()V

    .line 208
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->setText()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->setText()V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 217
    sget-object v0, Lcom/wy/f1home/activity/KeyguardActivity;->mPreferenceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_KEY:Ljava/lang/String;

    sget-object v3, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_KEY:Ljava/lang/String;

    sget-object v3, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_KEY:Ljava/lang/String;

    sget-object v3, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_KEY:Ljava/lang/String;

    sget-object v3, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setText()V
    .locals 6

    .line 92
    sget-object v0, Lcom/wy/f1home/activity/KeyguardActivity;->mPreferenceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    sget-object v2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 94
    sget-object v3, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 95
    sget-object v4, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 96
    sget-object v5, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v2, :cond_0

    .line 99
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewUp:Landroid/widget/TextView;

    const v2, 0x7f0f0048

    invoke-virtual {p0, v2}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_0
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewUp:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez v3, :cond_1

    .line 108
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewDown:Landroid/widget/TextView;

    const v2, 0x7f0f0043

    invoke-virtual {p0, v2}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_1
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewDown:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez v4, :cond_2

    .line 117
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewLeft:Landroid/widget/TextView;

    const v2, 0x7f0f0069

    invoke-virtual {p0, v2}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 121
    :cond_2
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewLeft:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez v0, :cond_3

    .line 126
    sget-object v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewRight:Landroid/widget/TextView;

    const v1, 0x7f0f006a

    invoke-virtual {p0, v1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 130
    :cond_3
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->mImageViewRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public startShortcutsSelect(Ljava/lang/String;I)V
    .locals 2

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    const-class v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->SHORTCUT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->SHORTCUT_KEYCODE:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
