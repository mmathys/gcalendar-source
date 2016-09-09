.class public Lcom/android/calendar/event/AttendeeCollection;
.super Ljava/lang/Object;
.source "AttendeeCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AttendeeCollection$RoomSorter;,
        Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mComparator:Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;

.field public final mHasResourceRooms:Z

.field private final mOwner:Lcom/android/calendar/event/CalendarEventModel$Attendee;

.field public final mPeoplePartitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mResourceRooms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoomComparator:Lcom/android/calendar/event/AttendeeCollection$RoomSorter;

.field public final mStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mCollator:Ljava/text/Collator;

    .line 56
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mStatus:Ljava/util/ArrayList;

    .line 63
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mStatus:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mStatus:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mStatus:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mStatus:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;-><init>(Lcom/android/calendar/event/AttendeeCollection;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mComparator:Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;

    .line 70
    new-instance v2, Lcom/android/calendar/event/AttendeeCollection$RoomSorter;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/AttendeeCollection$RoomSorter;-><init>(Lcom/android/calendar/event/AttendeeCollection;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mRoomComparator:Lcom/android/calendar/event/AttendeeCollection$RoomSorter;

    .line 73
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    .line 74
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mResourceRooms:Ljava/util/ArrayList;

    .line 80
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 81
    :goto_0
    if-eqz v2, :cond_1

    .line 83
    invoke-static {p1}, Lcom/android/calendar/event/AttendeeCollection;->createMyselfAsAttendee(Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mOwner:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeeCollection;->partitionAttendees(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 89
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mResourceRooms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mHasResourceRooms:Z

    .line 90
    return-void

    :cond_0
    move v2, v1

    .line 80
    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mOwner:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 89
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/calendar/event/AttendeeCollection;)Ljava/text/Collator;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private add(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public static createMyselfAsAttendee(Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/CalendarEventModel$Attendee;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/event/AttendeeCollection;->createMyselfAsAttendee(Lcom/android/calendar/event/CalendarEventModel;Z)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    return-object v0
.end method

.method public static createMyselfAsAttendee(Lcom/android/calendar/event/CalendarEventModel;Z)Lcom/android/calendar/event/CalendarEventModel$Attendee;
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 107
    :cond_0
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x2

    .line 111
    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 107
    invoke-static {v1}, Lcom/android/calendar/event/AttendeeCollection;->normalizeStatus(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    .line 113
    :goto_1
    return-object v0

    .line 111
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isResource(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    if-eqz p0, :cond_0

    const-string v0, "@resource.calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalizeStatus(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/android/calendar/event/CalendarEventModel$Attendee;
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 136
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getContactInfo()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getRelationship()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Lcom/android/calendar/timely/ContactInfo;II)V

    move-object p0, v0

    .line 139
    :pswitch_0
    return-object p0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private partitionAttendees(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 169
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/event/AttendeeCollection;->isResource(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mResourceRooms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/android/calendar/event/AttendeeCollection;->normalizeStatus(Lcom/android/calendar/event/CalendarEventModel$Attendee;)Lcom/android/calendar/event/CalendarEventModel$Attendee;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeeCollection;->add(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeeCollection;->getNumberPeople()I

    move-result v0

    if-lez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mOwner:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mOwner:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeeCollection;->add(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/calendar/event/AttendeeCollection;->mComparator:Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mResourceRooms:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/AttendeeCollection;->mRoomComparator:Lcom/android/calendar/event/AttendeeCollection$RoomSorter;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    return-void
.end method


# virtual methods
.method public getNumberPeople()I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v2, 0x2

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v2, 0x4

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection;->mPeoplePartitions:Ljava/util/LinkedHashMap;

    const/4 v2, 0x3

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 93
    return v0
.end method
