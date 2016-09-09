.class final Lcom/google/android/calendar/event/segment/CustomActionSegment$1;
.super Ljava/lang/Object;
.source "CustomActionSegment.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/segment/CustomActionSegment;->addSegment(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Callable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/calendar/event/segment/CustomActionSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/util/concurrent/Callable;

.field final synthetic val$analyticsAction:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$displayText:Ljava/lang/String;

.field final synthetic val$iconId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$displayText:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$iconId:I

    iput-object p3, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$action:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$analyticsAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$action:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public getAnalyticsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$analyticsAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;->val$iconId:I

    return v0
.end method
