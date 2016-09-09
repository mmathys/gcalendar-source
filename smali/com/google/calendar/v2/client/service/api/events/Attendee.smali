.class public Lcom/google/calendar/v2/client/service/api/events/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;
    }
.end annotation


# instance fields
.field private final additionalGuests:I

.field private cachedPrincipalType:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

.field private final fallbackName:Ljava/lang/String;

.field private final isOptional:Z

.field private final isOrganizer:Z

.field private final isSelf:Z

.field private final message:Ljava/lang/String;

.field private final principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private final response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    .line 42
    iput-boolean p3, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    .line 43
    iput p6, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    .line 44
    iput-boolean p7, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf:Z

    .line 45
    iput-boolean p8, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer:Z

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 47
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    .line 48
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private calculatePrincipalType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getAttendeeType(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    goto :goto_0
.end method

.method public static defaultFrom(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->NEEDS_ACTION:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    const-string v1, ""

    invoke-static {p0, v2, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->from(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 71
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/calendar/v2/client/service/api/events/Attendee;-><init>(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)V

    return-object v0
.end method

.method public static getAttendeeType(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
    .locals 1

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 113
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v0, "resource.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "group.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->GROUP:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, ".calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    goto :goto_0
.end method

.method public static namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 9

    .prologue
    .line 62
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/calendar/v2/client/service/api/events/Attendee;-><init>(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    if-ne p0, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    if-nez v2, :cond_2

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 176
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    .line 178
    invoke-virtual {v2, v3}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    iget v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAdditionalGuests()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    return v0
.end method

.method public getFallbackNameInternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public getResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    return-object v0
.end method

.method public declared-synchronized getType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->cachedPrincipalType:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->calculatePrincipalType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->cachedPrincipalType:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->cachedPrincipalType:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    return v0
.end method

.method public isOrganizer()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer:Z

    return v0
.end method

.method public isSelf()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Attendee"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Default name"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Optional"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Response"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Message"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Guests"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method public withOptionality(Z)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    iget-object v4, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    iget v5, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    iget-boolean v6, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf:Z

    iget-boolean v7, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer:Z

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method public withOrganizer(Z)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    iget-object v4, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    iget v5, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    iget-boolean v6, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf:Z

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method public withResponse(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    iget-object v4, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    iget v5, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    iget-boolean v6, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf:Z

    iget-boolean v7, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer:Z

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method public withResponse(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    iget-boolean v6, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf:Z

    iget-boolean v7, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer:Z

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method

.method public withSelf()Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 8

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->principal:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->fallbackName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOptional:Z

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->response:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    iget-object v4, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->message:Ljava/lang/String;

    iget v5, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->additionalGuests:I

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer:Z

    invoke-static/range {v0 .. v7}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->namedFromInternal(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;ZLcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;IZZ)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    return-object v0
.end method
