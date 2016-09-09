.class Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;
.super Ljava/lang/Object;
.source "SmartmailPreferences.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartmailDeliveryPair"
.end annotation


# instance fields
.field private final mChangeBehavior:Ljava/lang/String;

.field private final mSmartmailSetting:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->mSmartmailSetting:Ljava/lang/String;

    .line 676
    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->mChangeBehavior:Ljava/lang/String;

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$1;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getChangeBehavior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->mChangeBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartmailSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->mSmartmailSetting:Ljava/lang/String;

    return-object v0
.end method
