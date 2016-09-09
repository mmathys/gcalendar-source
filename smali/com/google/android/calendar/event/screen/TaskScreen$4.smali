.class final Lcom/google/android/calendar/event/screen/TaskScreen$4;
.super Ljava/lang/Object;
.source "TaskScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment$TaskAssistSegmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/TaskScreen;->addAssistSegment(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/calendar/task/assist/TaskAssistHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/assist/TaskAssistHolder;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$4;->val$holder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskAssistHolder()Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$4;->val$holder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    return-object v0
.end method
