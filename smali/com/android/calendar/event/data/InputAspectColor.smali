.class public interface abstract Lcom/android/calendar/event/data/InputAspectColor;
.super Ljava/lang/Object;
.source "InputAspectColor.java"


# virtual methods
.method public abstract addColorRefreshListener(Ljava/lang/Runnable;)V
.end method

.method public abstract canChangeColor()Z
.end method

.method public abstract getColorOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract getUnlistedColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeColorRefreshListener(Ljava/lang/Runnable;)V
.end method
