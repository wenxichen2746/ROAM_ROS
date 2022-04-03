// Generated by gencpp from file signalprocess/EMGresult.msg
// DO NOT EDIT!


#ifndef SIGNALPROCESS_MESSAGE_EMGRESULT_H
#define SIGNALPROCESS_MESSAGE_EMGRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace signalprocess
{
template <class ContainerAllocator>
struct EMGresult_
{
  typedef EMGresult_<ContainerAllocator> Type;

  EMGresult_()
    : data()  {
    }
  EMGresult_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::signalprocess::EMGresult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::signalprocess::EMGresult_<ContainerAllocator> const> ConstPtr;

}; // struct EMGresult_

typedef ::signalprocess::EMGresult_<std::allocator<void> > EMGresult;

typedef boost::shared_ptr< ::signalprocess::EMGresult > EMGresultPtr;
typedef boost::shared_ptr< ::signalprocess::EMGresult const> EMGresultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::signalprocess::EMGresult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::signalprocess::EMGresult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::signalprocess::EMGresult_<ContainerAllocator1> & lhs, const ::signalprocess::EMGresult_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::signalprocess::EMGresult_<ContainerAllocator1> & lhs, const ::signalprocess::EMGresult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace signalprocess

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::signalprocess::EMGresult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::signalprocess::EMGresult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::signalprocess::EMGresult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::signalprocess::EMGresult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::signalprocess::EMGresult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::signalprocess::EMGresult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::signalprocess::EMGresult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "420cd38b6b071cd49f2970c3e2cee511";
  }

  static const char* value(const ::signalprocess::EMGresult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x420cd38b6b071cd4ULL;
  static const uint64_t static_value2 = 0x9f2970c3e2cee511ULL;
};

template<class ContainerAllocator>
struct DataType< ::signalprocess::EMGresult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "signalprocess/EMGresult";
  }

  static const char* value(const ::signalprocess::EMGresult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::signalprocess::EMGresult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] data\n"
;
  }

  static const char* value(const ::signalprocess::EMGresult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::signalprocess::EMGresult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EMGresult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::signalprocess::EMGresult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::signalprocess::EMGresult_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIGNALPROCESS_MESSAGE_EMGRESULT_H