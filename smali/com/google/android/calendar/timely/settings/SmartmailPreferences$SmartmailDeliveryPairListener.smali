.class Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;
.super Ljava/lang/Object;
.source "SmartmailPreferences.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartmailDeliveryPairListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method public constructor <init>(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 641
    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;->mAccount:Landroid/accounts/Account;

    .line 642
    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;)V
    .locals 3

    .prologue
    .line 646
    new-instance v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;-><init>(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 647
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 635
    check-cast p1, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;->onChange(Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;)V

    return-void
.end method
