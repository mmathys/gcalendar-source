.class public Lcom/google/android/calendar/api/structuredlocation/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final country:Ljava/lang/String;

.field public final formattedAddress:Ljava/lang/String;

.field public final locality:Ljava/lang/String;

.field public final postOfficeBoxNumber:Ljava/lang/String;

.field public final postalCode:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final streetAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/Address$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/Address$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/structuredlocation/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->formattedAddress(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->country(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->locality(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->region(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->postOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->postalCode(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->streetAddress(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/structuredlocation/Address;-><init>(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)V

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/structuredlocation/Address$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/structuredlocation/Address;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mFormattedAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$000(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    .line 115
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mCountry:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$100(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->country:Ljava/lang/String;

    .line 116
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mLocality:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$200(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->locality:Ljava/lang/String;

    .line 117
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mRegion:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$300(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->region:Ljava/lang/String;

    .line 118
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostOfficeBoxNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$400(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postOfficeBoxNumber:Ljava/lang/String;

    .line 119
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostalCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$500(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postalCode:Ljava/lang/String;

    .line 120
    # getter for: Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mStreetAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->access$600(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->streetAddress:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    if-ne p1, p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/structuredlocation/Address;

    if-nez v2, :cond_2

    move v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    check-cast p1, Lcom/google/android/calendar/api/structuredlocation/Address;

    .line 143
    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->country:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->locality:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->locality:Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->region:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->region:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postOfficeBoxNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->postOfficeBoxNumber:Ljava/lang/String;

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->postalCode:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->streetAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/Address;->streetAddress:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 154
    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->country:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->locality:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postOfficeBoxNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postalCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->streetAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    const-string v0, "Address{formatted_address=%s, country=%s, locality=%s, region=%s, post_office_box_number=%s, postal_code=%s, street_address=%s}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->country:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->locality:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->region:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postOfficeBoxNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postalCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->streetAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->formattedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->locality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->region:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postOfficeBoxNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address;->streetAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void
.end method
