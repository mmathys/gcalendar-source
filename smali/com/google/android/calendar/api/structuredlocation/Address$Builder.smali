.class public Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
.super Ljava/lang/Object;
.source "Address.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/structuredlocation/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mFormattedAddress:Ljava/lang/String;

.field private mLocality:Ljava/lang/String;

.field private mPostOfficeBoxNumber:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mStreetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mFormattedAddress:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mCountry:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mLocality:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mRegion:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostOfficeBoxNumber:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostalCode:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mStreetAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mFormattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostOfficeBoxNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mStreetAddress:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/calendar/api/structuredlocation/Address;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/Address;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/api/structuredlocation/Address;-><init>(Lcom/google/android/calendar/api/structuredlocation/Address$Builder;)V

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mCountry:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public formattedAddress(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mFormattedAddress:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public locality(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mLocality:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public postOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostOfficeBoxNumber:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public postalCode(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mPostalCode:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mRegion:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public streetAddress(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->mStreetAddress:Ljava/lang/String;

    .line 104
    return-object p0
.end method
