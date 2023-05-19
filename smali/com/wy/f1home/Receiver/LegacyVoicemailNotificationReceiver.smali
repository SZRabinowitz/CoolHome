.class public Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LegacyVoicemailNotificationReceiver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;
    }
.end annotation


# static fields
.field public static mLegacyvoicemail:I

.field static mUpdateLegacyVoiceMailListen:Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static SetUpdateLegacyVoiceMailListen(Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;->mUpdateLegacyVoiceMailListen:Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "wuyu"

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "legacyvoicemail"

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;->mLegacyvoicemail:I

    const-string p1, "wuyu"

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "legacyvoicemail = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;->mLegacyvoicemail:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;->mUpdateLegacyVoiceMailListen:Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;

    if-eqz p1, :cond_0

    .line 54
    sget p2, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;->mLegacyvoicemail:I

    invoke-interface {p1, p2}, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;->OnUpdateLegacyVoiceMailListen(I)V

    :cond_0
    return-void
.end method
