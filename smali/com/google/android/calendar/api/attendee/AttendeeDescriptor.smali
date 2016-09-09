.class public Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;
.super Ljava/lang/Object;
.source "AttendeeDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final contactId:Lcom/google/android/calendar/api/attendee/ContactId;

.field public final email:Ljava/lang/String;

.field public final localId:Ljava/lang/Long;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(Ljava/lang/Long;ILjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V

    .line 80
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V
    .locals 3

    .prologue
    .line 86
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/ContactId;

    invoke-direct {p0, v1, v2, p3, v0}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(Ljava/lang/Long;ILjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 101
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->checkType(I)I

    move-result v2

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v1, Lcom/google/android/calendar/api/attendee/ContactId;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/attendee/ContactId;

    .line 101
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(Ljava/lang/Long;ILjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/attendee/AttendeeDescriptor$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;ILjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    .line 95
    iput p2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->type:I

    .line 96
    invoke-static {p3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0, v2}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;-><init>(Ljava/lang/Long;ILjava/lang/String;Lcom/google/android/calendar/api/attendee/ContactId;)V

    .line 73
    return-void
.end method

.method public static checkType(I)I
    .locals 2

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid attendeeDescriptor type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    return p0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    if-eqz v2, :cond_0

    .line 116
    check-cast p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 118
    iget v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->type:I

    iget v3, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->type:I

    if-ne v2, v3, :cond_0

    .line 121
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    iget-object v1, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attendee/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 127
    :cond_5
    iget-object v2, p1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 134
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->type:I

    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/attendee/ContactId;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 137
    return v0

    :cond_1
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->localId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 152
    iget v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->contactId:Lcom/google/android/calendar/api/attendee/ContactId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    return-void
.end method
