.class Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$4;
.super Ljava/lang/Object;
.source "TimelyWhereEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onStructuredLocationChange(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

.field final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$4;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$4;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$4;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 315
    return-void
.end method
