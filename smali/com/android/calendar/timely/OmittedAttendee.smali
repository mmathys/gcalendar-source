.class public Lcom/android/calendar/timely/OmittedAttendee;
.super Ljava/lang/Object;
.source "OmittedAttendee.java"


# instance fields
.field public final attendeeEmail:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final reason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/calendar/timely/OmittedAttendee;->attendeeEmail:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/calendar/timely/OmittedAttendee;->displayName:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/android/calendar/timely/OmittedAttendee;->reason:I

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    instance-of v1, p1, Lcom/android/calendar/timely/OmittedAttendee;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/OmittedAttendee;

    .line 74
    iget-object v1, p0, Lcom/android/calendar/timely/OmittedAttendee;->attendeeEmail:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/timely/OmittedAttendee;->attendeeEmail:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/OmittedAttendee;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/timely/OmittedAttendee;->displayName:Ljava/lang/String;

    .line 75
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/OmittedAttendee;->reason:I

    iget v2, p1, Lcom/android/calendar/timely/OmittedAttendee;->reason:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/OmittedAttendee;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/calendar/timely/OmittedAttendee;->attendeeEmail:Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/OmittedAttendee;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/timely/OmittedAttendee;->attendeeEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/timely/OmittedAttendee;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/calendar/timely/OmittedAttendee;->reason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/timely/OmittedAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
