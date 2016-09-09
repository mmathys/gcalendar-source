.class public Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;
.super Ljava/lang/Object;
.source "EventAnnotation.java"


# instance fields
.field private final annotatedText:Ljava/lang/String;

.field private final contact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

.field private final startOffset:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/google/calendar/v2/client/service/api/contacts/Contact;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->startOffset:I

    .line 24
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->annotatedText:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->contact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 26
    return-void
.end method

.method public static forContact(ILjava/lang/String;Lcom/google/calendar/v2/client/service/api/contacts/Contact;)Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;
    .locals 2

    .prologue
    .line 63
    new-instance v1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;-><init>(ILjava/lang/String;Lcom/google/calendar/v2/client/service/api/contacts/Contact;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    .line 77
    iget v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->startOffset:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->startOffset:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->annotatedText:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->annotatedText:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->contact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->contact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 79
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAnnotatedContact()Lcom/google/calendar/v2/client/service/api/contacts/Contact;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->contact:Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    return-object v0
.end method

.method public getAnnotatedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->annotatedText:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->startOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->startOffset:I

    return v0
.end method

.method public isApplicableTo(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getStartOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->annotatedText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->annotatedText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method
