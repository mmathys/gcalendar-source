.class public Lcom/google/android/calendar/api/attendee/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

.field public final displayName:Ljava/lang/String;

.field public final response:Lcom/google/android/calendar/api/attendee/Response;

.field public final role:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/calendar/api/attendee/Attendee$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attendee/Attendee$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/attendee/Attendee;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    .line 117
    const-class v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/attendee/Attendee;->checkRole(I)I

    move-result v3

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/attendee/Attendee;->checkType(I)I

    move-result v4

    const-class v0, Lcom/google/android/calendar/api/attendee/Response;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/calendar/api/attendee/Response;

    move-object v0, p0

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/attendee/Attendee;-><init>(Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;IILcom/google/android/calendar/api/attendee/Response;)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/attendee/Attendee$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attendee/Attendee;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;IILcom/google/android/calendar/api/attendee/Response;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 110
    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    .line 112
    iput p4, p0, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    .line 113
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Response;

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    .line 114
    return-void
.end method

.method public static checkRole(I)I
    .locals 2

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid role value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    return p0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static checkType(I)I
    .locals 2

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    return p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 128
    const/4 v0, 0x1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    instance-of v1, p1, Lcom/google/android/calendar/api/attendee/Attendee;

    if-eqz v1, :cond_0

    .line 134
    check-cast p1, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 136
    iget v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    iget v2, p1, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    if-ne v1, v2, :cond_0

    .line 139
    iget v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    iget v2, p1, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    if-ne v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v2, p1, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget-object v1, p1, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attendee/Response;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->hashCode()I

    move-result v0

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    add-int/2addr v0, v1

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/attendee/Response;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    return-void
.end method
