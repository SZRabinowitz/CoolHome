.class public Lcom/wy/f1home/activity/ToolActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ToolActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mAdapter:Lcom/wy/f1home/activity/ToolActivityAdapter;

.field public mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

.field public mCuurentIndex:I

.field mListView:Landroid/widget/ListView;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mCuurentIndex:I

    return-void
.end method


# virtual methods
.method public changStatusIconCollor(Z)V
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/wy/f1home/activity/ToolActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 97
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public finish()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 106
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    return-void
.end method

.method public initButtonBar()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "ToolActivity initButtonBar"

    .line 57
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0900e7

    .line 58
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 60
    new-instance v0, Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-direct {v0, p0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    .line 62
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wy/f1home/activity/ToolActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/ToolActivity;->changStatusIconCollor(Z)V

    const p1, 0x7f0c0052

    .line 42
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/ToolActivity;->setContentView(I)V

    const p1, 0x7f09007c

    .line 44
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/ToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    .line 45
    new-instance p1, Lcom/wy/f1home/activity/ToolActivityAdapter;

    invoke-static {}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getExtraAppsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/wy/f1home/activity/ToolActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mAdapter:Lcom/wy/f1home/activity/ToolActivityAdapter;

    .line 46
    iget-object p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mAdapter:Lcom/wy/f1home/activity/ToolActivityAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 51
    invoke-virtual {p0}, Lcom/wy/f1home/activity/ToolActivity;->initButtonBar()V

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

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "wuyu"

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mPkgName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wy/f1home/uitl/Bean;

    iget-object p4, p4, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wuyu"

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mClsName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wy/f1home/uitl/Bean;

    iget-object p4, p4, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wy/f1home/uitl/Bean;

    iget-object p1, p1, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wy/f1home/uitl/Bean;

    iget-object p2, p2, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/wy/f1home/uitl/PackageInfoUtil;->constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Lcom/wy/f1home/uitl/PackageInfoUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mCuurentIndex:I

    const-string v0, "wuyu"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCuurentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wy/f1home/activity/ToolActivity;->mCuurentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 118
    :pswitch_0
    iget p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mCuurentIndex:I

    iget-object p2, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return v0

    .line 124
    :pswitch_1
    iget p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mCuurentIndex:I

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/wy/f1home/activity/ToolActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .line 68
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/ToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/ToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarCenter(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method
