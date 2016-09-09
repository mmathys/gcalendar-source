.class final Lcom/android/calendar/event/data/LoadDetailsUtils$2;
.super Ljava/lang/Object;
.source "LoadDetailsUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/LoadDetailsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z
    .locals 2

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/data/LoadDetailsUtils$2;->apply(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z

    move-result v0

    return v0
.end method
