.class public Lcom/google/android/calendar/api/ColorDescriptor;
.super Ljava/lang/Object;
.source "ColorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/ColorDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mColorId:Ljava/lang/String;

.field private final mColorType:I

.field private final mCustomColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/google/android/calendar/api/ColorDescriptor$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/ColorDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/ColorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown color type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    .line 89
    iput-object p2, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    .line 90
    iput-object p3, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->checkType(I)I

    move-result v2

    const-class v0, Landroid/accounts/Account;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v1, Ljava/lang/Integer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 96
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/google/android/calendar/api/ColorDescriptor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/ColorDescriptor$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ColorDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static checkType(I)I
    .locals 2

    .prologue
    .line 72
    packed-switch p0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid color type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    return p0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createCalendarColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 3

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/google/android/calendar/api/ColorDescriptor;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/android/calendar/api/ColorDescriptor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static createCustomColorDescriptor(Ljava/lang/Integer;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/google/android/calendar/api/ColorDescriptor;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/google/android/calendar/api/ColorDescriptor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 3

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/google/android/calendar/api/ColorDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/android/calendar/api/ColorDescriptor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    instance-of v1, p1, Lcom/google/android/calendar/api/ColorDescriptor;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    check-cast p1, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 174
    iget v1, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    iget v2, p1, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    .line 175
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    .line 176
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    .line 177
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccount() cannot be called on custom descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    return-object v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColorId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getColorId() cannot be called on custom descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 136
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    return-object v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    .line 183
    iget v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    add-int/lit16 v0, v0, 0x20f

    .line 184
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 187
    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    .line 149
    iget v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    packed-switch v0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    const-string v0, "Events"

    .line 163
    :goto_0
    const-string v1, "ColorDescriptor{type=%s, account=%s, color ID/key=\'%s\', custom color=#%x }"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    aput-object v3, v2, v0

    .line 164
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    return-object v0

    .line 154
    :pswitch_1
    const-string v0, "Calendars"

    goto :goto_0

    .line 157
    :pswitch_2
    const-string v0, "CalendarCustom"

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 203
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mColorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorDescriptor;->mCustomColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 205
    return-void
.end method
