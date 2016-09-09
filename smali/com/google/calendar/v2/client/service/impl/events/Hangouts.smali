.class public Lcom/google/calendar/v2/client/service/impl/events/Hangouts;
.super Ljava/lang/Object;
.source "Hangouts.java"


# direct methods
.method public static equal(Lcom/google/calendar/v2/client/service/api/events/Hangout;Lcom/google/calendar/v2/client/service/api/events/Hangout;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 17
    :cond_0
    if-ne p0, p1, :cond_2

    .line 19
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 17
    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->hasHangout()Z

    move-result v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->hasHangout()Z

    move-result v3

    if-ne v2, v3, :cond_4

    .line 20
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
