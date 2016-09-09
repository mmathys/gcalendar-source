.class public Lcom/android/calendar/event/ConferenceCallSpan;
.super Landroid/text/style/ClickableSpan;
.source "ConferenceCallSpan.java"


# instance fields
.field private mConferenceNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/calendar/event/ConferenceCallSpan;->mConferenceNumber:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getConferenceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/event/ConferenceCallSpan;->mConferenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
