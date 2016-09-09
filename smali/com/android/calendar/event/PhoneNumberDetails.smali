.class public Lcom/android/calendar/event/PhoneNumberDetails;
.super Ljava/lang/Object;
.source "PhoneNumberDetails.java"


# instance fields
.field private mPassCode:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/PhoneNumberDetails;->mPhoneNumber:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/calendar/event/PhoneNumberDetails;->mPassCode:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/event/PhoneNumberDetails;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/calendar/event/PhoneNumberDetails;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/PhoneNumberDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPassCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/event/PhoneNumberDetails;->mPassCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/event/PhoneNumberDetails;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/event/PhoneNumberDetails;->mPhoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/event/PhoneNumberDetails;->mPassCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
