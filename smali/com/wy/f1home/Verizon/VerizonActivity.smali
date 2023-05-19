.class public Lcom/wy/f1home/Verizon/VerizonActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VerizonActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private Datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/wy/f1home/Verizon/VerizonActivityAdapter;

.field public mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

.field mListView:Landroid/widget/ListView;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->Datas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public changStatusIconCollor(Z)V
    .locals 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/wy/f1home/Verizon/VerizonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 68
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public initButtonBar()V
    .locals 4

    const-string v0, "wuyu"

    const-string v1, "ToolActivity initButtonBar"

    .line 75
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0900e7

    .line 76
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Verizon/VerizonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 78
    new-instance v0, Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-direct {v0, p0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    .line 80
    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/Verizon/VerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/Verizon/VerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarCenter(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Verizon/VerizonActivity;->changStatusIconCollor(Z)V

    const p1, 0x7f0c0054

    .line 44
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Verizon/VerizonActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/wy/f1home/Verizon/VerizonActivity;->initButtonBar()V

    const p1, 0x7f09007c

    .line 48
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Verizon/VerizonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mListView:Landroid/widget/ListView;

    .line 49
    new-instance p1, Lcom/wy/f1home/uitl/Bean;

    const-string v0, "My Verizon"

    const-string v1, "com.vzw.hss.myverizon"

    const-string v2, "com.vzw.hss.myverizon/.ui.activities.LauncherActivity"

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/wy/f1home/uitl/Bean;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/wy/f1home/uitl/Bean;

    const-string v1, "Cloud"

    const-string v2, "com.vcast.mediamanager"

    const-string v4, "com.synchronoss.syncdrive.android.uibasic.activities.WelcomeScreenActivity"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/wy/f1home/uitl/Bean;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->Datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->Datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Lcom/wy/f1home/Verizon/VerizonActivityAdapter;

    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->Datas:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/wy/f1home/Verizon/VerizonActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mAdapter:Lcom/wy/f1home/Verizon/VerizonActivityAdapter;

    .line 54
    iget-object p1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mAdapter:Lcom/wy/f1home/Verizon/VerizonActivityAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object p1, p0, Lcom/wy/f1home/Verizon/VerizonActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "wuyu"

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "VerizonActivity position = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wy/f1home/uitl/Bean;

    iget-object p1, p1, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wy/f1home/uitl/Bean;

    iget-object p3, p3, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-static {p0, p1, p3}, Lcom/wy/f1home/uitl/PackageInfoUtil;->constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/wy/f1home/Verizon/VerizonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wy/f1home/uitl/Bean;

    iget-object p2, p2, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wy/f1home/Verizon/VerizonActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
