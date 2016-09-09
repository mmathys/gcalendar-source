.class public interface abstract Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;
.super Ljava/lang/Object;
.source "InputAspectNotificationPrefs.java"


# virtual methods
.method public abstract canVibrate()Z
.end method

.method public abstract getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
.end method

.method public abstract mutableNotify()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableRingtoneUri()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableUseStandardTone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableVibrate()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method
