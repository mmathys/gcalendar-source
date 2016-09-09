.class public Lcom/android/calendar/ToneUpgradeReceiver;
.super Lcom/android/calendar/UpgradeReceiver;
.source "ToneUpgradeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ToneUpgradeReceiver$RingtoneUpgradeService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TONE_RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/ToneUpgradeReceiver;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;

    .line 39
    sget v0, Lcom/android/calendar/R$raw;->timely_event:I

    sput v0, Lcom/android/calendar/ToneUpgradeReceiver;->TONE_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/calendar/UpgradeReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected doUpgrade(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/ToneUpgradeReceiver$RingtoneUpgradeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    return-void
.end method
