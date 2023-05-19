.class public Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "KeyShortcutsSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;
.implements Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;


# static fields
.field public static SHORTCUT_KEYCODE:Ljava/lang/String; = null

.field public static SHORTCUT_TITLE:Ljava/lang/String; = "highLightTitle"


# instance fields
.field private adapter:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;

.field private listText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcom/wy/f1home/KeyShortcuts/HandleDataListView;

.field public mHighLightTitle:Ljava/lang/String;

.field private mPos:I

.field public mShortcuts_key:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->listText:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mPos:I

    return-void
.end method


# virtual methods
.method public Receive(I)V
    .locals 3

    const-string v0, "wuyu"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive mPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput p1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mPos:I

    .line 144
    iget-object p1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->listView:Lcom/wy/f1home/KeyShortcuts/HandleDataListView;

    iget v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mPos:I

    invoke-virtual {p1, v0}, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;->setSelection(I)V

    return-void
.end method

.method public SetShortcut(Ljava/lang/String;I)V
    .locals 2

    .line 111
    sget-object v0, Lcom/wy/f1home/activity/KeyguardActivity;->mPreferenceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mShortcuts_key:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 118
    :pswitch_2
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 130
    :pswitch_3
    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_KEY_TITLE:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900b8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changStatusIconCollor(Z)V
    .locals 2

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 86
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    const v0, 0x7f09007d

    .line 62
    invoke-virtual {p0, v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->listView:Lcom/wy/f1home/KeyShortcuts/HandleDataListView;

    .line 63
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->listView:Lcom/wy/f1home/KeyShortcuts/HandleDataListView;

    invoke-virtual {v0, p0}, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->SHORTCUT_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mHighLightTitle:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->SHORTCUT_KEYCODE:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mShortcuts_key:I

    return-void
.end method

.method public initDate()V
    .locals 3

    .line 69
    new-instance v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;

    sget-object v1, Lcom/wy/f1home/uitl/PackageInfoUtil;->mShortCutsAppsList:Ljava/util/List;

    iget-object v2, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mHighLightTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->adapter:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;

    .line 70
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->listView:Lcom/wy/f1home/KeyShortcuts/HandleDataListView;

    iget-object v1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->adapter:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;

    invoke-virtual {v0, v1}, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-static {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->setHighlightPosCallBack(Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;)V

    .line 72
    invoke-static {p0}, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;->setDataChangedListener(Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;)V

    .line 73
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->adapter:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;

    invoke-virtual {v0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->changStatusIconCollor(Z)V

    const p1, 0x7f0c0034

    .line 55
    invoke-virtual {p0, p1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->init()V

    .line 59
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->initDate()V

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

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wy/f1home/uitl/Bean;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/Bean;->getmPkgName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/Bean;->getmClsName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p1, p1, Lcom/wy/f1home/uitl/Bean;->mTitleId:I

    invoke-virtual {p0, p2, p1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->SetShortcut(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->finish()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "wuyu"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess mPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsSelectActivity;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
