.class public Lcom/android/calendar/newapi/screen/SegmentViews;
.super Ljava/lang/Object;
.source "SegmentViews.java"


# instance fields
.field public final bodyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public headerView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    return-void
.end method
