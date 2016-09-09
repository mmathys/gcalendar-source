.class Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;
.super Ljava/lang/Object;
.source "EventAttendeeUtil.java"


# instance fields
.field private final attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private autoManageSingleAttendee:Z

.field private organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;",
            "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
            "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->autoManageSingleAttendee:Z

    .line 32
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 33
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 34
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 35
    return-void
.end method

.method private createAttendeeEntry(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 187
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 188
    if-eqz v6, :cond_0

    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ACCEPTED:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    .line 189
    :goto_0
    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->NEEDS_ACTION:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    goto :goto_0
.end method

.method static extractSelfResponse(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 58
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAttendeeByPrincipalOfAttendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 270
    if-nez p1, :cond_0

    move-object v0, v1

    .line 279
    :goto_0
    return-object v0

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    .line 274
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 275
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 279
    goto :goto_0
.end method

.method private replaceEntry(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 73
    if-eqz p1, :cond_4

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 76
    :goto_0
    if-eqz p2, :cond_3

    .line 77
    iget-object v3, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v3, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 80
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 82
    return v1

    :cond_2
    move v0, v2

    .line 74
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    throw v0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private respondInternal(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 2

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 137
    const/4 p1, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object p1

    .line 139
    :cond_1
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->withResponse(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->replaceEntry(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    move-object p1, v0

    .line 147
    goto :goto_0
.end method

.method private selfToAttendeeIfIndividual()Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ACCEPTED:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    const-string v4, ""

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v7, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 291
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v5, v2

    .line 288
    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarUtil;->isIndividual(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 295
    goto :goto_0
.end method

.method private stopAutoManagingIfCalendarIs(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->autoManageSingleAttendee:Z

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method extractResponse(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p1, :cond_0

    move-object v0, v1

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 43
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 47
    goto :goto_0
.end method

.method extractSelfResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method public invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractResponse(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->stopAutoManagingIfCalendarIs(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 169
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->autoManageSingleAttendee:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 170
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfToAttendeeIfIndividual()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-direct {p0, p1, p2}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->createAttendeeEntry(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    throw v0
.end method

.method public respond(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 1

    .prologue
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->respondInternal(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method setOptional(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Z)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 2

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractResponse(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->withOptionality(Z)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v1

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->replaceEntry(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    move-object v0, v1

    .line 101
    goto :goto_0
.end method

.method public uninvite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 206
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractResponse(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v1

    .line 208
    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->stopAutoManagingIfCalendarIs(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 214
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-boolean v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->autoManageSingleAttendee:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    throw v0
.end method

.method public updateOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 6

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 234
    invoke-static {}, Lcom/google/calendar/v2/common/CollectionUtil;->newArrayList()Ljava/util/List;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 236
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer()Z

    move-result v3

    .line 237
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v4

    iget-object v5, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 238
    if-eq v3, v4, :cond_0

    .line 239
    invoke-virtual {v0, v4}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->withOrganizer(Z)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 244
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    invoke-direct {p0, v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->replaceEntry(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 247
    return-void
.end method

.method public updateSelfPrincipalKey(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 256
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->autoManageSingleAttendee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v3

    .line 260
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->selfToAttendeeIfIndividual()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v4

    .line 261
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    .line 262
    :cond_3
    invoke-direct {p0, v4}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->getAttendeeByPrincipalOfAttendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v5, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 264
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->replaceEntry(Lcom/google/calendar/v2/client/service/api/events/Attendee;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 263
    goto :goto_1
.end method
