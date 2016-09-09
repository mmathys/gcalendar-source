.class public Lcom/android/calendar/timely/ContactInfo$Builder;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContactId:Ljava/lang/Long;

.field private mFocusId:Ljava/lang/Long;

.field private mHasPhoto:Ljava/lang/Boolean;

.field private mLookupKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPrimaryEmail:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/ContactInfo$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/calendar/timely/ContactInfo$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mFocusId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mPrimaryEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mContactId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/ContactInfo$Builder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mHasPhoto:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/calendar/timely/ContactInfo;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/calendar/timely/ContactInfo;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ContactInfo;-><init>(Lcom/android/calendar/timely/ContactInfo$Builder;)V

    return-object v0
.end method

.method public setContactId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mContactId:Ljava/lang/Long;

    .line 130
    return-object p0
.end method

.method public setFocusId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mFocusId:Ljava/lang/Long;

    .line 115
    return-object p0
.end method

.method public setHasPhoto(Ljava/lang/Boolean;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mHasPhoto:Ljava/lang/Boolean;

    .line 140
    return-object p0
.end method

.method public setLookupKey(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mLookupKey:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mName:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/calendar/timely/ContactInfo$Builder;->mPrimaryEmail:Ljava/lang/String;

    .line 125
    return-object p0
.end method
