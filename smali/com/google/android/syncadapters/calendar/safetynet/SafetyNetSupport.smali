.class public Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;
.super Ljava/lang/Object;
.source "SafetyNetSupport.java"


# static fields
.field private static sSafetyNet:Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;


# direct methods
.method public static getSafetyNet()Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->sSafetyNet:Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call SafetyNetSupport.initialize(Context) prior to usage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->sSafetyNet:Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_sync_use_new_too_many_deletes_detection"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;-><init>(Landroid/content/Context;)V

    .line 38
    :goto_0
    sput-object v0, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->sSafetyNet:Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;

    .line 39
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
