.class public interface abstract Lcom/android/calendar/prefs/PrefService;
.super Ljava/lang/Object;
.source "PrefService.java"


# virtual methods
.method public abstract getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/android/calendar/timely/PrimaryAccountSelector;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V
.end method
