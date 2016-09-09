.class public Lcom/android/calendar/event/CalendarEventModel$Attendee;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attendee"
.end annotation


# instance fields
.field private final mContactInfo:Lcom/android/calendar/timely/ContactInfo;

.field private mRelationship:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/ContactInfo;)V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Lcom/android/calendar/timely/ContactInfo;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/ContactInfo;II)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iput p2, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mStatus:I

    .line 126
    iput p3, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mRelationship:I

    .line 127
    iput-object p1, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    .line 118
    invoke-static {p1, p2}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->fixName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo$Builder;->setName(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0, p3, p4}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Lcom/android/calendar/timely/ContactInfo;II)V

    .line 122
    return-void
.end method

.method private static fixName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 p0, 0x0

    .line 166
    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 85
    if-ne p0, p1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    check-cast p1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 92
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContactInfo()Lcom/android/calendar/timely/ContactInfo;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    iget-object v0, v0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo;->getNameNotEmpty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelationship()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mRelationship:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mStatus:I

    return v0
.end method

.method public hasDeclinedStatus()Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$Attendee;->mContactInfo:Lcom/android/calendar/timely/ContactInfo;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOrganizer()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getRelationship()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
