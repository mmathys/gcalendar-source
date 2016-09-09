.class public Lcom/google/calendar/v2/client/service/api/events/EventEdit;
.super Ljava/lang/Object;
.source "EventEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;
    }
.end annotation


# instance fields
.field private editScope:Lcom/google/calendar/v2/client/service/api/events/EditScope;

.field private final event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

.field private final initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

.field private invitationMessage:Ljava/lang/String;

.field private final originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    # getter for: Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/Event;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 45
    # getter for: Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->access$200(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 46
    # getter for: Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    .line 47
    # getter for: Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 48
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;Lcom/google/calendar/v2/client/service/api/events/EventEdit$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;-><init>(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)V

    return-void
.end method

.method private static hasLocation(Lcom/google/calendar/v2/client/service/api/events/Event;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAttendeeStateValid()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRelatedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 174
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAttendees()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDateRangeValid()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 179
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    .line 181
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 182
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 183
    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v2

    if-gt v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 182
    :cond_1
    return v0

    :cond_2
    move v1, v0

    .line 181
    goto :goto_0
.end method

.method public static newBuilder(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;-><init>(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;Lcom/google/calendar/v2/client/service/api/events/EventEdit$1;)V

    return-object v0
.end method


# virtual methods
.method public allowsEditScope(Lcom/google/calendar/v2/client/service/api/events/EditScope;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;->isRecurring()Z

    move-result v2

    if-nez v2, :cond_3

    .line 92
    :cond_0
    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/EditScope;->ONE:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    if-ne p1, v2, :cond_2

    .line 99
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 92
    goto :goto_0

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    .line 96
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v2

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 97
    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/EditScope;->FOLLOWING:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    if-eq p1, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 99
    :cond_4
    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/EditScope;->ONE:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isRecurring()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getEditScope()Lcom/google/calendar/v2/client/service/api/events/EditScope;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->editScope:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->editScope:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    invoke-virtual {p0, v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->allowsEditScope(Lcom/google/calendar/v2/client/service/api/events/EditScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->editScope:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->FOLLOWING:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    invoke-virtual {p0, v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->allowsEditScope(Lcom/google/calendar/v2/client/service/api/events/EditScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->FOLLOWING:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->ONE:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    goto :goto_0
.end method

.method public getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    return-object v0
.end method

.method public getInitialEvent()Lcom/google/calendar/v2/client/service/api/events/Event;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    return-object v0
.end method

.method public getInvitationMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->invitationMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    return-object v0
.end method

.method public hasManualChanges()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;->isEquivalentTo(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hasManualLocationAdded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->hasLocation(Lcom/google/calendar/v2/client/service/api/events/Event;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->hasLocation(Lcom/google/calendar/v2/client/service/api/events/Event;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->hasLocation(Lcom/google/calendar/v2/client/service/api/events/Event;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->isDateRangeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->isAttendeeStateValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 167
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Availability;->BUSY:Lcom/google/calendar/v2/client/service/api/events/Availability;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 168
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditScope(Lcom/google/calendar/v2/client/service/api/events/EditScope;)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->allowsEditScope(Lcom/google/calendar/v2/client/service/api/events/EditScope;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 85
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->editScope:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    .line 86
    return-void
.end method

.method public setInvitationMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->invitationMessage:Ljava/lang/String;

    .line 158
    return-void
.end method
