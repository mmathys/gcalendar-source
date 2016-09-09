.class Lcom/android/calendar/event/edit/segment/AccountEditSegment$2;
.super Ljava/lang/Object;
.source "AccountEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/AccountEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)V
    .locals 2

    .prologue
    .line 143
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    .line 144
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$2;->onChange(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)V

    return-void
.end method
