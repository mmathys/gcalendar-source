.class public interface abstract Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;
.super Ljava/lang/Object;
.source "InputAspectHomeTimezone.java"


# virtual methods
.method public abstract getCachedHomeTimezone()Ljava/lang/String;
.end method

.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public abstract mutableTimezone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableUseHomeTimezone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method
