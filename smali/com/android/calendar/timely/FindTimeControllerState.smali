.class public Lcom/android/calendar/timely/FindTimeControllerState;
.super Ljava/lang/Object;
.source "FindTimeControllerState.java"


# direct methods
.method public static isLoadingState(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 92
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuggestionFilterState(I)Z
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuggestionGridState(I)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuggestionListState(I)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
