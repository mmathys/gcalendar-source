.class public Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
.super Ljava/lang/Object;
.source "PostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    }
.end annotation


# instance fields
.field private final country:Ljava/lang/String;

.field private final formattedAddress:Ljava/lang/String;

.field private final locality:Ljava/lang/String;

.field private final postOfficeBoxNumber:Ljava/lang/String;

.field private final postalCode:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final streetAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->formattedAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->formattedAddress:Ljava/lang/String;

    .line 26
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->country:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->country:Ljava/lang/String;

    .line 27
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->locality:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$200(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->locality:Ljava/lang/String;

    .line 28
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->postOfficeBoxNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$300(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    .line 29
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->postalCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$400(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postalCode:Ljava/lang/String;

    .line 30
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->streetAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$500(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->streetAddress:Ljava/lang/String;

    .line 31
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->region:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->access$600(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->region:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;-><init>(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    if-nez v2, :cond_2

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    .line 117
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->formattedAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->formattedAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->country:Ljava/lang/String;

    .line 118
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->locality:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->locality:Ljava/lang/String;

    .line 119
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postalCode:Ljava/lang/String;

    .line 121
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->streetAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->streetAddress:Ljava/lang/String;

    .line 122
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->region:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->region:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getPostOfficeBoxNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->formattedAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->country:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->locality:Ljava/lang/String;

    .line 102
    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    .line 103
    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postalCode:Ljava/lang/String;

    .line 104
    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->streetAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->region:Ljava/lang/String;

    .line 105
    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Formatted address"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->formattedAddress:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Country"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->country:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Locality"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->locality:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Region"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->region:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "PO box number"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postOfficeBoxNumber:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Postal code"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->postalCode:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Street address"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->streetAddress:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    return-object v0
.end method
