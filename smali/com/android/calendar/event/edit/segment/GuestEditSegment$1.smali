.class final Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Landroid/text/util/Rfc822Token;",
        ">;"
    }
.end annotation


# instance fields
.field final mValidator:Lcom/android/common/Rfc822Validator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/android/common/Rfc822Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;->mValidator:Lcom/android/common/Rfc822Validator;

    return-void
.end method


# virtual methods
.method public apply(Landroid/text/util/Rfc822Token;)Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {p1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 115
    check-cast p1, Landroid/text/util/Rfc822Token;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;->apply(Landroid/text/util/Rfc822Token;)Z

    move-result v0

    return v0
.end method
