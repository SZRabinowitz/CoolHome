.class public abstract Lcom/wy/f1home/uitl/QueryDialogActivity;
.super Landroid/app/Activity;
.source "QueryDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;


# instance fields
.field private queryDialog:Lcom/wy/f1home/uitl/QueryDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public OnQueryDialogButtonClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected abstract createQueryDialog()Lcom/wy/f1home/uitl/QueryDialog;
.end method

.method public getQueryDialog()Lcom/wy/f1home/uitl/QueryDialog;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialogActivity;->queryDialog:Lcom/wy/f1home/uitl/QueryDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialogActivity;->requestWindowFeature(I)Z

    .line 24
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialogActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/wy/f1home/uitl/QueryDialogActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 30
    invoke-virtual {p0}, Lcom/wy/f1home/uitl/QueryDialogActivity;->createQueryDialog()Lcom/wy/f1home/uitl/QueryDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/uitl/QueryDialogActivity;->queryDialog:Lcom/wy/f1home/uitl/QueryDialog;

    .line 31
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialogActivity;->queryDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {v0, p0}, Lcom/wy/f1home/uitl/QueryDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialogActivity;->queryDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {v0, p0}, Lcom/wy/f1home/uitl/QueryDialog;->setOnQueryDialogButtonClickListener(Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialogActivity;->queryDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {v0}, Lcom/wy/f1home/uitl/QueryDialog;->show()V

    return-void
.end method
