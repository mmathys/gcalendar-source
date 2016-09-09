.class public Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
.super Ljava/lang/Object;
.source "PostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private formattedAddress:Ljava/lang/String;

.field private locality:Ljava/lang/String;

.field private postOfficeBoxNumber:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->locality:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->postOfficeBoxNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->region:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;-><init>(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$1;)V

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->country:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setFormattedAddress(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->formattedAddress:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setLocality(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->locality:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->postOfficeBoxNumber:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->postalCode:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->region:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->streetAddress:Ljava/lang/String;

    .line 175
    return-object p0
.end method
